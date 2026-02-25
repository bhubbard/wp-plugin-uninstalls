-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blnotifier_cache', 'blnotifier_pause_frontend_scanning', 'blnotifier_pause_results_verification', 'blnotifier_status_codes', 'blnotifier_has_updated_settings', 'blnotifier_enable_warnings', 'blnotifier_post_types', 'blnotifier_include_images', 'blnotifier_documents_use_head', 'blnotifier_user_agent', 'blnotifier_timeout', 'blnotifier_allow_redirects', 'blnotifier_max_redirects', 'blnotifier_ssl_verify', 'eri_files_folder', 'blnotifier_editable_roles', 'blnotifier_mark_code_zero_broken', 'blnotifier_enable_delete_source', 'blnotifier_enable_emailing', 'blnotifier_emails', 'blnotifier_enable_discord', 'blnotifier_discord', 'blnotifier_enable_msteams', 'blnotifier_msteams', 'blnotifier_enable_good_links', 'blnotifier_show_in_console', 'blnotifier_scan_header', 'blnotifier_scan_footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta_key', 'source', 'location', 'type', 'code', 'method', '_post_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta_key', 'source', 'location', 'type', 'code', 'method', '_post_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta_key', 'source', 'location', 'type', 'code', 'method', '_post_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta_key', 'source', 'location', 'type', 'code', 'method', '_post_url');

