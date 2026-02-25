-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sr_logo_image', 'sr_banner_image', 'sr_seodata', 'sr_seodata_list', 'sr_css', 'sr_templates', 'sr_templates_extra', 'sr_templates_list', 'sr_popup', 'sr-plugintext', 'sr_listingsOrder', 'sr_crm', 'sr_boot', 'sr_show_features', 'sr_open_in_new_window', 'sr_use_custom_pagi', 'bootstrap_refine', 'bootstrap_refine_sc', 'sr_fq', 'sr_template', 'sr_leadcapture', 'sr_emailmethod', 'sr_customform', 'sr_unfoundpage', 'sr-mailchimptoken', 'sr-mailchimplist', 'sr_prioritization', 'fbid', 'googleid', 'sr_users', 'sr-shortcode', 'sr_metadata', 'sr_templates_community', 'sr_templates_overview', 'sr_templates_features', 'sr_templates_map', 'sr_templates_video', 'sr_aceEditor', 'sr-map', 'sr_lastsitemap', 'sr_feed', 'srRewDB', 'sr_listingsViewStatistic', 'sr_nonce', 'sr_baseurl', 'sr_cacheoverride', 'my_plugin_version', 'sr_display_update_banner', 'sr_citypage_url_map', 'sr_lastupdated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_date');

