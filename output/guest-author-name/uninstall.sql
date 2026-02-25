-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guest_author_name_settings', 'guest_author_name_settings ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simply_guest_author_premium_nag_ignore4', 'sfly_guest_author_names', 'sfly_guest_link', 'sfly_guest_author_description', 'sfly_guest_author_email', 'sfly_guest_author');
DELETE FROM wp_usermeta WHERE meta_key IN ('simply_guest_author_premium_nag_ignore4', 'sfly_guest_author_names', 'sfly_guest_link', 'sfly_guest_author_description', 'sfly_guest_author_email', 'sfly_guest_author');
DELETE FROM wp_termmeta WHERE meta_key IN ('simply_guest_author_premium_nag_ignore4', 'sfly_guest_author_names', 'sfly_guest_link', 'sfly_guest_author_description', 'sfly_guest_author_email', 'sfly_guest_author');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simply_guest_author_premium_nag_ignore4', 'sfly_guest_author_names', 'sfly_guest_link', 'sfly_guest_author_description', 'sfly_guest_author_email', 'sfly_guest_author');

