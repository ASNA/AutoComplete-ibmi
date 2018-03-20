"use strict";

let listOptions = {
    itemInputId: 'textboxName',
    url: '../api/customers?startswith=',
    size: 12,
    incrementalSearch: false,
    focusElementAfterSearch: 'TextBox1',
    onItemListBlur: function (text, value) {
        let targetValueElement = document.getElementById('hiddenCustomerNumber');
        targetValueElement.value = value;
    }
}

rp.dom.documentReady(function () {
    new rp.AutoComplete(listOptions);
})