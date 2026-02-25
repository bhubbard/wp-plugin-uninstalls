-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'invite_anyone', 'invite_anyone_db_version', 'limited_email_domains', 'cloudsponge-services', 'ia_user_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bp_ia_accepted', 'bp_ia_is_cloudsponge', 'opt_out');
DELETE FROM wp_usermeta WHERE meta_key IN ('bp_ia_accepted', 'bp_ia_is_cloudsponge', 'opt_out');
DELETE FROM wp_termmeta WHERE meta_key IN ('bp_ia_accepted', 'bp_ia_is_cloudsponge', 'opt_out');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bp_ia_accepted', 'bp_ia_is_cloudsponge', 'opt_out');

