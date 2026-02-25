-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mg_wp2tsina');
DELETE FROM wp_options WHERE option_name LIKE 'mg_wp2tsina_last_result_for_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mg_wp2tsina_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mg_wp2tsina_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mg_wp2tsina_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mg_wp2tsina_id');

