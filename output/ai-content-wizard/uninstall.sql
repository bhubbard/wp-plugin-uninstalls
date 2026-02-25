-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acw_timeout_probe_last', 'ai_content_wizard_wizard_completed', 'ai_content_wizard_completed_steps', 'ai_content_wizard_plugin_version', 'ai_content_wizard_redirect_on_activation', 'active_sitewide_plugins', 'ai_content_wizard_content_plan_notice_dismissed', 'ai_content_wizard_image_model_changed', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

