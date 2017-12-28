var Show = (function() {
  var $btnNewTransaction;
  var $modalTransaction;
  var $btnSave;
  var $inputAmount;
  var $selectTransactionType;
  var $parameters;
  var bankAccount;

  var fetchElements = function() {
    $btnNewTransaction     = $('#btn-new-transaction');
    $modalTransaction      = $('#modal-transaction');
    $btnSave               = $('#btn-save');
    $inputAmount           = $('#input-amount');
    $selectTransactionType = $('#select-transaction-type');
    $parameters            = $('#parameters');
    bankAccount            = $parameters.data('bank-account-id');
  }
  var disableControls = function() {
    $btnSave.prop('disabled', true)
    $inputAmount.prop('disabled', true)
    $selectTransactionType.prop('disabled', true)
  }
  var enableControls = function() {
    $btnSave.prop('disabled', false)
    $inputAmount.prop('disabled', false)
    $selectTransactionType.prop('disabled', false)
  }
  var initializeEvents = function() {
    $btnNewTransaction.on('click', function() {
      $modalTransaction.modal('show');
    });
    $btnSave.on('click', function() {
      var amount          = $inputAmount.val();
      var transactionType = $selectTransactionType.val();
      disableControls();
    });
  }
  var init = function() {
    fetchElements();
    initializeEvents();
  };

  return {
    init: init
  }

})();
