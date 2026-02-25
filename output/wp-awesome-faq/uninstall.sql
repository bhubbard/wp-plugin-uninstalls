-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'update_plugins', 'update_themes', '_jltmaf_welcome_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('close_icon', 'open_icon', 'faq-title-bg-color', 'faq-title-text-color', 'faq-bg-color', 'faq-text-color', 'faq-border-color', 'faq_icon_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('close_icon', 'open_icon', 'faq-title-bg-color', 'faq-title-text-color', 'faq-bg-color', 'faq-text-color', 'faq-border-color', 'faq_icon_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('close_icon', 'open_icon', 'faq-title-bg-color', 'faq-title-text-color', 'faq-bg-color', 'faq-text-color', 'faq-border-color', 'faq_icon_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('close_icon', 'open_icon', 'faq-title-bg-color', 'faq-title-text-color', 'faq-bg-color', 'faq-text-color', 'faq-border-color', 'faq_icon_position');

