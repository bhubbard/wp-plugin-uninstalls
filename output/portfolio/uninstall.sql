-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bstwbsftwppdtplgns_options', 'recently_activated', 'active_sitewide_plugins', 'cstmsrch_options', 'sndr_options', 'prtfl_options', 'prtfl_demo_options', 'widget_portfolio_technologies_widget', 'prtfl_tag_update', 'update_plugins', 'bws_plugins_update');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%demo_options';
DELETE FROM wp_options WHERE option_name LIKE '%options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_wp_page_template', '_thumbnail_id', 'prtfl_information', '_prtfl_images', '_wp_attachment_image_alt', '_wp_attachment_image_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_wp_page_template', '_thumbnail_id', 'prtfl_information', '_prtfl_images', '_wp_attachment_image_alt', '_wp_attachment_image_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_wp_page_template', '_thumbnail_id', 'prtfl_information', '_prtfl_images', '_wp_attachment_image_alt', '_wp_attachment_image_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bws_affiliate_postbox_dismissed', 'dismissed_wp_pointers', '_wp_page_template', '_thumbnail_id', 'prtfl_information', '_prtfl_images', '_wp_attachment_image_alt', '_wp_attachment_image_title');

