-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ez_zenback_setting_opt', 'ez_zenback_position', 'ez_zenback_single', 'ez_zenback_page', 'ez_zenback_closed_comment', 'ez_zenback_accuracy', 'ez_zenback_style_enable', 'ez_zenback_before_post', 'ez_before_post', 'ez_before_post_home', 'ez_before_post_single', 'ez_before_post_page', 'ez_before_post_category', 'ez_before_post_search', 'ez_before_post_archive', 'ez_zenback_after_post', 'ez_after_post', 'ez_after_post_home', 'ez_after_post_single', 'ez_after_post_page', 'ez_after_post_category', 'ez_after_post_search', 'ez_after_post_archive', 'ez_zenback_code', 'ez_zenback_exc', 'ez_zenback_style', 'ez_zenback_updated', 'ez_zenback_checkver_stamp', 'widget_ezzenbackwidget');

