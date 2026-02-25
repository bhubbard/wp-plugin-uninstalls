-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fweo_emailoctopus_api_key', 'fweo_emailoctopus_show_all_pages', 'fweo_emailoctopus_google_analytics', 'fweo_emailoctopus_include_css', 'fweo_emailoctopus_include_font_awesome', 'fweo_emailoctopus_enable_wpa', 'fweo_emailoctopus_list_id', 'fweo_emailoctopus_extra_fields', 'woocommerce_fws-woo-emailoctopus_settings', 'fweo_mailing_lists', 'fweo_emailoctopus_gdpr_text', 'fweo_emailoctopus_clicky', 'fweo_emailoctopus_cookie_name', 'fweo_emailoctopus_text_newsletter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fweo_emailoctopus_subscribed');
DELETE FROM wp_usermeta WHERE meta_key IN ('fweo_emailoctopus_subscribed');
DELETE FROM wp_termmeta WHERE meta_key IN ('fweo_emailoctopus_subscribed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fweo_emailoctopus_subscribed');

