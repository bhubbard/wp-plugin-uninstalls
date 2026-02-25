-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cas_widget_domain', 'cas_widget_type', 'cas_widget_pos', 'cas_widget_label', 'cas_widget_theme', 'cas_widget_lang', 'cas_widget_lang_id', 'casengo_do_activation_redirect');

