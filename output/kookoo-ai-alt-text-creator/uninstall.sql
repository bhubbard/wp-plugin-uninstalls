-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aialtg_settings', 'aialtg_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aialtg_processed', '_aialtg_error_log', '_wp_attachment_image_alt', '_aialtg_gen_date', '_aialtg_gen_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aialtg_processed', '_aialtg_error_log', '_wp_attachment_image_alt', '_aialtg_gen_date', '_aialtg_gen_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aialtg_processed', '_aialtg_error_log', '_wp_attachment_image_alt', '_aialtg_gen_date', '_aialtg_gen_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aialtg_processed', '_aialtg_error_log', '_wp_attachment_image_alt', '_aialtg_gen_date', '_aialtg_gen_source');

