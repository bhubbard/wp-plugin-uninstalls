-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('riaco_feedback_slug', 'riaco_notify_admin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('term_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('term_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('term_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('term_color');

