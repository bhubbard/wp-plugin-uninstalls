-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_happyforms_widget', 'widget_block', 'happyforms-validation-messages', 'happyforms_modal_dismissed_onboarding', 'happyforms_show_powered_by', '_happyforms_received_submissions', 'happyforms-tracking', 'ttf_updates_key_happyforms', 'happyforms-data-version', '_happyforms_cleanup_on_deactivate', 'happyforms_review_notice_recommend');
DELETE FROM wp_options WHERE option_name LIKE 'happyforms_admin_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('happyforms-dismissed-notices', '_happyforms_parts', 'syntax_highlighting', 'happyforms-settings-sections-states');
DELETE FROM wp_usermeta WHERE meta_key IN ('happyforms-dismissed-notices', '_happyforms_parts', 'syntax_highlighting', 'happyforms-settings-sections-states');
DELETE FROM wp_termmeta WHERE meta_key IN ('happyforms-dismissed-notices', '_happyforms_parts', 'syntax_highlighting', 'happyforms-settings-sections-states');
DELETE FROM wp_commentmeta WHERE meta_key IN ('happyforms-dismissed-notices', '_happyforms_parts', 'syntax_highlighting', 'happyforms-settings-sections-states');

