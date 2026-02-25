-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pojo_a11y_toolbar', 'pojo_a11y_focusable', 'pojo_a11y_remove_link_target', 'pojo_a11y_add_role_links', 'pojo_a11y_save', 'pojo_a11y_save_expiration', 'pojo_a11y_skip_to_content_link', 'pojo_a11y_skip_to_content_link_element_id', 'pojo_a11y_toolbar_button_sitemap_link', 'pojo_a11y_toolbar_button_help_link', 'pojo_a11y_toolbar_button_feedback_link', 'ea11y_subscription_id', 'ea11y_accessibility_statement_data', 'ea11y_widget_icon_settings', 'elementor_connect_site_key', 'elementor_ea11y_campaign');
DELETE FROM wp_options WHERE option_name LIKE '%welcome_screen_completed';
DELETE FROM wp_options WHERE option_name LIKE '%dismiss_connect_alert';
DELETE FROM wp_options WHERE option_name LIKE '%editor_update_notification_dismissed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_a11y_elementor_install_notice', 'ea11y-scanner-heading-issues-dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_a11y_elementor_install_notice', 'ea11y-scanner-heading-issues-dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_a11y_elementor_install_notice', 'ea11y-scanner-heading-issues-dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_a11y_elementor_install_notice', 'ea11y-scanner-heading-issues-dismissed');

