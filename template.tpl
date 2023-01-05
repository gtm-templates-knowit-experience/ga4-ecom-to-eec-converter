___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 Ecommerce to Enhanced Ecommerce Converter",
  "description": "Convert GA4 Ecommerce to Universal Analytics Enhanced Ecommerce. It supports all EEC Actions, and also Product Scoped Dimensions/Metrics.",
  "categories": [
    "ANALYTICS",
    "UTILITY",
    "TAG_MANAGEMENT"
  ],
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "description",
    "displayName": "This Variable makes it possible to convert GA4 Ecommerce Object \u0026 Events to Enhanced Ecommerce. You can choose GA4 Ecommerce Object, do Automatically or Manual Mapping, create Checkout, and map Product Scoped Dimensions/Metrics."
  },
  {
    "type": "GROUP",
    "name": "ecomInputGroup",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "RADIO",
        "name": "ecomInputSelector",
        "displayName": "Select GA4 Ecommerce Object",
        "radioItems": [
          {
            "value": "ecomAuto",
            "displayValue": "GA4 Ecommerce Object"
          },
          {
            "value": "ecomGTMVariable",
            "displayValue": "GTM Variable"
          }
        ],
        "simpleValueType": true
      },
      {
        "type": "SELECT",
        "name": "GTMVariable",
        "displayName": "GTM Variable",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "ecomInputSelector",
            "paramValue": "ecomGTMVariable",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "help": "Choose if Enhanced Ecommerce Object should be created from \u003cb\u003eGA4 Ecommerce Object from DataLayer\u003c/b\u003e, or from a \u003cb\u003eGTM Variable\u003c/b\u003e. Use the last option if you for example have rewritten your GA4 Ecommerce data using a Custom Javascript Variable.",
    "displayName": "GA4 Ecommerce Object"
  },
  {
    "type": "RADIO",
    "name": "mapEcomEvents",
    "displayName": "Map GA4 Ecommerce to Enhanced Ecommerce Actions",
    "radioItems": [
      {
        "value": "mapAuto",
        "displayValue": "Map GA4 Ecommerce to Enhanced Ecommerce  Actions Automatically"
      },
      {
        "value": "mapMan",
        "displayValue": "Map Manually"
      }
    ],
    "simpleValueType": true,
    "help": "If your GA4 Ecommerce implementation is implemented with the \u003cb\u003ecorrect GA4 Events\u003c/b\u003e, choose Automatically mapping. If not, map manually.\nThis mapping does not include \u003cb\u003eEnhanced Checkout\u003c/b\u003e, that is done in the \u003cb\u003eCheckout Setup\u003c/b\u003e mapping."
  },
  {
    "type": "GROUP",
    "name": "mapEventsManually",
    "displayName": "Map Variables Manually to Enhanced Ecommerce Actions",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "mapManVariables",
        "displayName": "Map Variables to Enhanced Ecommerce Object",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Enhanced Ecommerce Action",
            "name": "mapGA4Events",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "view_item_list",
                "displayValue": "Product/Item List Views/Impressions"
              },
              {
                "value": "select_item",
                "displayValue": "Product/Item List Clicks"
              },
              {
                "value": "view_item",
                "displayValue": "Product/Item Detail Views"
              },
              {
                "value": "add_to_cart",
                "displayValue": "Add to Cart"
              },
              {
                "value": "view_cart",
                "displayValue": "View Cart"
              },
              {
                "value": "remove_from_cart",
                "displayValue": "Remove from Cart"
              },
              {
                "value": "purchase",
                "displayValue": "Purchase"
              },
              {
                "value": "refund",
                "displayValue": "Refund"
              },
              {
                "value": "view_promotion",
                "displayValue": "Promotion Views/Impressions"
              },
              {
                "value": "select_promotion",
                "displayValue": "Promotion Clicks"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "GTM Variable",
            "name": "mapVariable",
            "type": "TEXT",
            "valueHint": "{{Event}}"
          },
          {
            "defaultValue": "",
            "displayName": "GTM Variable Value",
            "name": "mapVariableValue",
            "type": "TEXT",
            "valueHint": "addToCart"
          }
        ],
        "newRowButtonText": "Add GTM Variable to Map to Enhanced Ecommerce Object",
        "help": "If don\u0027t have correct \u003cb\u003eGA4 Ecom Events\u003c/b\u003e implemented with the GA4 Ecommerce Object, but you have a \u003cb\u003eGTM Variable\u003c/b\u003e connected to the GA4 Ecommerce Object, use this mapping.\n\n\u003cb\u003eCheckout\u003c/b\u003e has it\u0027s own mapping, and doesn\u0027t use this setting."
      }
    ],
    "enablingConditions": [
      {
        "paramName": "mapEcomEvents",
        "paramValue": "mapMan",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "checkoutObject",
    "displayName": "Checkout Setup",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "LABEL",
        "name": "checkoutDescription",
        "displayName": "Map \u003cb\u003eEEC Checkout Actions, Steps \u0026 Options\u003c/b\u003e to your existing \u003cb\u003eGA4 Ecommerce implementation\u003c/b\u003e. Map using \u003cb\u003eGTM Events\u003c/b\u003e, \u003cb\u003eGTM Variables\u003c/b\u003e and \u003cb\u003eGTM Variable Values\u003c/b\u003e."
      },
      {
        "type": "PARAM_TABLE",
        "name": "checkoutSettings",
        "displayName": "Checkout Settings",
        "paramTableColumns": [
          {
            "param": {
              "type": "SELECT",
              "name": "checkoutAction",
              "displayName": "EEC Checkout Action",
              "selectItems": [
                {
                  "value": "checkout",
                  "displayValue": "Checkout"
                },
                {
                  "value": "checkout_option",
                  "displayValue": "Checkout Option"
                }
              ],
              "simpleValueType": true,
              "help": "\u003cb\u003eEnhanced Ecommerce Checkout Action\u003c/b\u003e is either a Checkout (\u003cb\u003echeckout\u003c/b\u003e) or a Checkout Option (\u003cb\u003echeckout_option\u003c/b\u003e)."
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "SELECT",
              "name": "checkoutStep",
              "displayName": "EEC Checkout Step",
              "selectItems": [
                {
                  "value": 1,
                  "displayValue": "1"
                },
                {
                  "value": 2,
                  "displayValue": "2"
                },
                {
                  "value": 3,
                  "displayValue": "3"
                },
                {
                  "value": 4,
                  "displayValue": "4"
                },
                {
                  "value": 5,
                  "displayValue": "5"
                },
                {
                  "value": 6,
                  "displayValue": "6"
                },
                {
                  "value": 7,
                  "displayValue": "7"
                },
                {
                  "value": 8,
                  "displayValue": "8"
                }
              ],
              "simpleValueType": true,
              "help": "Choose \u003cb\u003eCheckout Step Number\u003c/b\u003e."
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "checkoutOption",
              "displayName": "EEC Checkout Option",
              "simpleValueType": true,
              "help": "If you have a Variable/Parameter that contains \u003cb\u003eCheckout Option info\u003c/b\u003e (ex. \u003cb\u003epayment_type\u003c/b\u003e, add that Variable here. \nThis Value \u003cb\u003ecan\u003c/b\u003e be empty.",
              "canBeEmptyString": true,
              "notSetText": "N/A"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "GTMEvent",
              "displayName": "GTM  Event",
              "simpleValueType": true,
              "valueValidators": [
                {
                  "type": "NON_EMPTY"
                }
              ],
              "valueHint": "begin_checkout",
              "help": "Insert \u003cb\u003eGTM Event\u003c/b\u003e that would trigger this Checkout Step, ex. \u003ci\u003ebegin_checkout\u003c/i\u003e. If the GTM Event isn\u0027t enough to classify this step, fill out the \u003cb\u003eGTM Variable\u003c/b\u003e and \u003cb\u003eGTM Variable Value\u003c/b\u003e fields as well.\nThis Value \u003cb\u003ecan\u0027t\u003c/b\u003e be empty."
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "GTMVariable",
              "displayName": "GTM Variable",
              "simpleValueType": true,
              "help": "If the \u003cb\u003eGA4 Event\u003c/b\u003e alone isn\u0027t enough to classify the \u003cb\u003eEEC Checkout Step\u003c/b\u003e, maybe you have a \u003cb\u003eParameter (Dimension)\u003c/b\u003e, or can create a \u003cb\u003eGTM Variable\u003c/b\u003e that can help you with the classification. Insert the \u003cb\u003eGTM Variable\u003c/b\u003e into this field.\nThis Value \u003cb\u003ecan\u003c/b\u003e be empty.",
              "canBeEmptyString": true,
              "notSetText": "N/A"
            },
            "isUnique": false
          },
          {
            "param": {
              "type": "TEXT",
              "name": "GTMVariableValue",
              "displayName": "GTM Variable Value",
              "simpleValueType": true,
              "canBeEmptyString": true,
              "help": "Insert a \u003cb\u003eGTM Variable Value\u003c/b\u003e that matches the output from the \u003cb\u003eGTM Variable\u003c/b\u003e and will help you classify this step.\nThis Value \u003cb\u003ecan\u003c/b\u003e be empty.",
              "notSetText": "N/A"
            },
            "isUnique": false
          }
        ],
        "newRowButtonText": "Add Checkout Action \u0026 Checkout Step"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "mapItemParameters",
    "displayName": "Map Item Parameters to Product Scoped Dimensions or Metrics",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "LABEL",
        "name": "mapItemParametersDescription",
        "displayName": "If your \u003cb\u003eGA4 Ecommerce Items\u003c/b\u003e contains \u003cb\u003eItem Parameters\u003c/b\u003e similiar to \u003cb\u003eEnhanced Ecommerce Product Scoped Dimensions/Metrics\u003c/b\u003e, use this table to map Item Parameter to corresponding Dimension/Metric."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "itemParamMapTable",
        "displayName": "Map Item Parameters to Product Scoped Dimensions/Metrics",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Item Parameter Name",
            "name": "itemParam",
            "type": "TEXT",
            "valueHint": "Ex. item_rating",
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Product Scoped Dimension/Metric",
            "name": "paramIndex",
            "type": "TEXT",
            "isUnique": true,
            "valueHint": "Ex. dimension1",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ]
          }
        ],
        "help": "Input \u003cstrong\u003eItem Parameters\u003c/strong\u003e and map them to \u003cstrong\u003eProduct Scoped Custom Dimensions\u003cstrong\u003e  (ex. \u003ci\u003edimension1\u003c/i\u003e) or Metrics  (ex. \u003ci\u003emetric1\u003c/i\u003e).\nSince GA4 doesn\u0027t have the Dimension/Metric concept, use this table to map \u003cstrong\u003eboth\u003c/strong\u003e Dimensions \u0026 Metrics.",
        "newRowButtonText": "Map Item Parameter to Product Scoped Dimension/Metric"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const dataLayer = require('copyFromDataLayer');
const JSON = require('JSON');
const makeTableMap = require('makeTableMap');

// Input settings
let ecom = data.GTMVariable ? data.GTMVariable : dataLayer('ecommerce', 1); // Data Layer Version 1
if(ecom) {
  ecom = JSON.stringify(ecom).indexOf('ecommerce')>0 ? ecom.ecommerce : ecom;
  let event = dataLayer('event',2);
  const itemParamMapTable = data.itemParamMapTable ? makeTableMap(data.itemParamMapTable, 'itemParam', 'paramIndex'): undefined;
  const checkoutEventTable = data.checkoutEventTable;
  // Manual mapping of Variables if GA4 Ecom Events are Custom Events
    if (data.mapManVariables && data.mapEcomEvents === 'mapMan') {
      data.mapManVariables.forEach((eventArray) => {
      if (eventArray.mapVariable === eventArray.mapVariableValue) {
        event = eventArray.mapGA4Events;}
      });
    }
  // EEC Ecom Action Definition
  const eecEventMapping = {
    'view_item_list': 'impressions',
    'select_item': 'click',
    'view_item': 'detail',
    'add_to_cart': 'add',
    'remove_from_cart': 'remove',
    'purchase': 'purchase',
    'refund': 'refund',
    'select_promotion': 'promoClick',
    'view_promotion': 'promoView'
  };
  let eecAction = eecEventMapping[event];
  // Checkout Mapping
  let checkoutOption;
  let checkoutStep;
  if (data.checkoutSettings) {
    data.checkoutSettings.forEach((checkoutArray) => {
      if (checkoutArray.GTMEvent === event && checkoutArray.GTMVariable === checkoutArray.GTMVariableValue) {
        eecAction = checkoutArray.checkoutAction;
        checkoutStep = checkoutArray.checkoutStep;
        checkoutOption = checkoutArray.checkoutOption;
      }
    });
  }      
  const eecItems = ecom.items ? ecom.items : undefined;
  let currency = ecom.currency;
  let affiliation = ecom.affiliation;
  let item_list_name = ecom.item_list_name;
  if (eecAction) {
    if (eecAction === 'promoClick' || eecAction === 'promoView') { 
      // EEC Promotions
      let promo;
      const promotion_id = ecom.promotion_id ? ecom.promotion_id : undefined;
      const promotion_name = ecom.promotion_name ? ecom.promotion_name : undefined;
      const creative_name = ecom.creative_name ? ecom.creative_name : undefined;
      const creative_slot = ecom.creative_slot ? ecom.creative_slot : undefined;
        
      if (eecItems && !(promotion_id||promotion_name)) {
        promo = [];
        for(let i =0; i < eecItems.length && (eecItems[i].promotion_id||eecItems[i].promotion_name); i++){
          promo.push({
            'id': eecItems[i].promotion_id,
            'name': eecItems[i].promotion_name,
            'creative': eecItems[i].creative_name,
            'position': eecItems[i].creative_slot
          });
        }
      }
      promo = promo ? promo : [{id:promotion_id, name:promotion_name, creative: creative_name, position: creative_slot}];
      if (eecAction === 'promoClick') { 
        ecom = {ecommerce: {promoClick: {promotions: promo}}};
      }
      if (eecAction === 'promoView') {
        ecom = {ecommerce: {promoView: {promotions: promo}}}; 
      }           
    } else  {
      // EEC Products
      currency = eecItems && eecItems.length > 0 ? eecItems[0].currency : currency;
      affiliation = eecItems.length && !affiliation ? eecItems[0].affiliation : affiliation;
      let items = [];
        if(eecItems) {
          for(let i =0; i < eecItems.length; i++){
          let category;
          const item = eecItems[i];
            	if (item.item_category) {category = item.item_category.toString().replace('/', '_');}
		if (item.item_category2) {category = category + '/' + item.item_category2.toString().replace('/', '_');}
		if (item.item_category3) {category = category + '/' + item.item_category3.toString().replace('/', '_');}
		if (item.item_category4) {category = category + '/' + item.item_category4.toString().replace('/', '_');}
		if (item.item_category5) {category = category + '/' + item.item_category5.toString().replace('/', '_');}
			items.push({
              'id': item.item_id,
              'name': item.item_name,
              'variant': item.item_variant,
              'brand': item.item_brand,
              'price': item.price,
              'quantity': item.quantity,
              'coupon': item.item_coupon,
              'category': category,
              'list': item.item_list_name ? item.item_list_name : item_list_name,
              'position': item.index ? item.index : undefined
            });
            if (itemParamMapTable) {
              for (let param in item) {
                if (item.hasOwnProperty(param)) {
                  if (itemParamMapTable[param]) {
                    items[i][itemParamMapTable[param]] = item[param];
                  }
                }
              }
            }
          
        }
      }
      item_list_name = items && items.length > 0 ? items[0].list : item_list_name;
      if (eecAction === 'impressions') {
        ecom = {ecommerce: {currencyCode: currency, impressions: items}};
      }
      if (eecAction === 'click') {
        ecom = {ecommerce: {currencyCode: currency, click: {actionField: {list: item_list_name}, products: items}}};
      }
      if (eecAction === 'detail') {
        ecom = {ecommerce: {currencyCode: currency, detail: {actionField: {list: item_list_name}, products: items}}};
      }
      if (eecAction === 'add') {
        ecom = {ecommerce: {currencyCode: currency, add: {actionField: {list: item_list_name}, products: items}}};
      }
      if (eecAction === 'remove') {
        ecom = {ecommerce: {currencyCode: currency, remove: {products: items}}};
      }
      if (eecAction === 'purchase') {
        const transaction_id = ecom.transaction_id, value = ecom.value, tax = ecom.tax, shipping = ecom.shipping, coupon = ecom.coupon;
        ecom = {ecommerce: {currencyCode: currency, purchase: {actionField: {id: transaction_id, affiliation: affiliation, revenue: value, tax: tax, shipping: shipping, coupon: coupon}, products: items}}};
      }
      if (eecAction === 'refund') {
        const transaction_id = ecom.transaction_id;
        ecom = {ecommerce: {currencyCode: currency, refund: {actionField: {id: transaction_id}, products: items}}};
      } 
      if (eecAction === 'checkout') {
        ecom = {ecommerce: {ccurrencyCode: currency, checkout: {actionField: {step: checkoutStep, option: checkoutOption}, products: items}}};
      }
      if (eecAction === 'checkout_option') {
        ecom = {ecommerce: {currencyCode: currency, checkout_option: {actionField: {step: checkoutStep, option: checkoutOption}}}};
      }     
    }
  return ecom;
  }  
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce.*"
              },
              {
                "type": 1,
                "string": "event"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 10/19/2020, 2:11:38 PM
