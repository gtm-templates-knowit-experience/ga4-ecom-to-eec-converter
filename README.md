# GA4 Ecommerce to Enhanced Ecommerce Converter
This Google Tag Manager Variable makes it possible to convert **[GA4 Ecommerce](https://developers.google.com/tag-manager/ecommerce-ga4)** to **[Enhanced Ecommerce](https://developers.google.com/tag-manager/enhanced-ecommerce)**. This is useful if you want to implement GA4 Ecommerce, but at the same time needs to run Universal Analytics Enhanced Ecommerce in parallel.

This GTM Variable can also map **Item Parameters** to **Product Scoped Dimensions & Metrics**, and configure a **Enhanced Ecommerce Checkout** based on your GA4 Ecommerce implementation.

**The following settings are available in this Variable:**
- GA4 Ecommerce Object selection
- Map GA4 Ecommerce to Enhanced Ecommerce Actions
- EEC Checkout
- Map Item Paramenters to Product Scoped Custom Dimensions or Metrics

This Template is available in the [**Google Tag Manager Template Gallery**](https://tagmanager.google.com/gallery/#/owners/gtm-templates-knowit-experience/templates/ga4-ecom-to-eec-converter).

## GA4 Ecommerce Object selection
This setting lets you choose if you want to read GA4 Ecommerce data from the **Ecommerce Object (Data Layer)**, or from a **GTM Variable**.

If you for example have rewritten your GA4 Ecommerce Object using a Custom Javascript Variable, you can choose this Variable as the input for your Enhanced Ecommerce data as well.

![GA4 Ecommerce Object selection](https://github.com/gtm-templates-knowit-experience/ga4-ecom-to-eec-converter/blob/main/images/ga4-ecom-object-selector.jpg)

If you haven’t done any rewriting, choose **GA4 Ecommerce Object** from this setting.

## Map GA4 Ecommerce to Enhanced Ecommerce Actions
If your GA4 Ecommerce implementation doesn’t use the recommended **[[GA4] Events for Retail/Ecommerce](https://support.google.com/analytics/answer/9268036)**, you can map this manually. How to map this will depend on your implementation. Perhaps non-standard Events have been used. Then you can map against these.

![Map GA4 Ecommerce to Enhanced Ecommerce Actions](https://github.com/gtm-templates-knowit-experience/ga4-ecom-to-eec-converter/blob/main/images/ga4-ecom-eec-actions-mapping.jpg)

In the example above, **Product/Item Detail Views** has the Event **productView** implemented. This is not a standard GA4 Event, and because of that, we have to map this Event manually.

## EEC Checkout
GA4 Ecommerce doesn’t have the same checkout concept as Enhanced Ecommerce with ex. Checkout Steps and Checkout Option.

To make this mapping easier (and also analysing GA4 data), we recommend that you add additional information to your GA4 Checkout implementation. That could be, depending on your checkout:
- Custom Checkout Event(s) if the recommended [GA4] Events doesn’t cover your complete checkout.
- Custom Parameters to identify Step Numbers (if relevant).
- If you have several checkouts (ex. different for B2C and B2B), use a Custom Parameter to identify which checkout this is.

![Checkout setup/mapping](https://github.com/gtm-templates-knowit-experience/ga4-ecom-to-eec-converter/blob/main/images/ga4-ecom-checkout-mapping.jpg)

In the example above, the checkout contains 3 Checkout Steps.
1. Step 1 is easy to match, because we can map it against the **begin_checkout** Event, and don’t need any further mapping. This step doesn’t have any parameter that is relevant to use as Checkout Option in this fictual implementation.
2. Step 2 doesn’t have a GA4 implementation specifically for this step. But, the combination of using **{{Page Path}}** as **GTM Variable**, and matching against **/checkout/step-2** as **GTM Variable Value**, and matching **GTM Event** against **gtm.js** (Page View Event), we are still able to track this as Step 2.
3. Step 3 is easy to match because we can map it against the **add_payment_info** Event. In addition, we are tracking the **payment_type** Parameter as **EEC Checkout Option**.

## Map Item Paramenters to Product Scoped Custom Dimensions or Metrics
If you are using **Item Scoped Parameters*** in your implementation, use this setting to map them against **Product Scoped Custom Dimension or Metrics**.

![Map Item Paramenters to Product Scoped Custom Dimensions or Metrics](https://github.com/gtm-templates-knowit-experience/ga4-ecom-to-eec-converter/blob/main/images/ga4-ecom-item-parameter-mapping.jpg)

*Item Scoped Parameters for GA4 aren’t available yet. Since we don’t know how that will look like when they get available, both Custom Dimensions and Custom Metrics are therefore mapped in the same table.

## Google Analytics: Universal Analytics Ecommerce Tag Setup
The image below shows the GA (UA) Ecommerce Tag Setup, using a Event Tag.

![Google Analytics: Universal Analytics Ecommerce Tag Setup](https://github.com/gtm-templates-knowit-experience/ga4-ecom-to-eec-converter/blob/main/images/ga-ua-tag-eec-setup.jpg)

### Currency (1)
Even if GA4 Ecommerce needs to have Currency for the Ecommerce tracking, currency can be implemented in many different ways. It could be implemented as part of the Ecommerce Object, but I can also be implemented globally, or something else. Because of that, Currency isn’t implemented as part of the Template.

Instead, use **“Field to Set”** for Currency tracking. For simplicity this is set directly in the Tag in this example, but it’s better to set Currency in the **Google Analytics Settings Variable**.

### Read Enhanced Ecommerce data from Variable (2)
Under **Ecommerce settings** in the Tag, choose **True** for **Enable Enhanced Ecommerce Features settings**. Untick **Use Data Layer**, and choose the Variable you have created from this template.

## Image of the Variable Template
![Image of the Variable Template](https://github.com/gtm-templates-knowit-experience/ga4-ecom-to-eec-converter/blob/main/images/ga4-ecom-to-enhanced-ecommerce-converter-variable.jpg)

