-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clientIDs', 'searchLayout', 'box_form_background', 'box_title_background', 'box_button_background', 'mv_cr_section_color', 'form_heading_color', 'box_form_heading_size', 'box_form_font_size', 'rec_form_background', 'rec_title_background', 'rec_button_background', 'rec_section_color', 'rec_form_heading_color', 'rec_form_heading_size', 'rec_form_font_size', 'list_background_color', 'list_header_color', 'list_heading_color', 'list_subheading_color', 'list_font_color', 'list_heading_size', 'list_normal_size', 'list_sub_title_size', 'list_btn_color', 'enablepayment', 'searchHeight', 'searchWidth', 'rectsearchHeight', 'rectsearchWidth', 'listingLayout', 'dropoffon', 'dropoffMandatory', 'vehType', 'vehicleTypeMandatory', 'age', 'ageMandatory', 'promo', 'promoMandatory', 'sample', 'seats', 'doors', 'doorsMand', 'baggage', 'baggageMand', 'feature', 'featureMand', 'transmission', 'transmissionMand', 'tax');
DELETE FROM wp_options WHERE option_name IN ('taxMand', 'total', 'totalMand', 'priceHightoLow', 'vehicletypeMand', 'priceLowtoHigh', 'passengerCapacityMand', 'AtoZ', 'baggageOptionalMand', 'chargeDesc', 'chargeDescMand', 'addresson', 'addressMand', 'cityon', 'cityMand', 'stateon', 'stateMand', 'zipon', 'zipMand', 'countryon', 'countryMand', 'Notes', 'NotesMand', 'area2', 'sampleMand', 'seatsMand', 'dobon', 'dobMand', 'companyName', 'companyMand', 'emergency', 'emergencyMand', 'license', 'licenseMand', 'licenseIssue', 'licenseIssueMand', 'licenseExpiry', 'licenseExpiryMand', 'passportNumber', 'passportNumberMand', 'passportIssue', 'passportIssueMand', 'passportExpiry', 'passportExpiryMand', 'drivingExp', 'drivingExpMand', 'form_link_color', 'clientCId', 'apiConsumerSecret');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

