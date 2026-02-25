-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpr_options', 'wpreadable_ping_rescheduled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpr_pv');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpr_pv');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpr_pv');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpr_pv');

