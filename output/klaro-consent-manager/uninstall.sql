-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('klaro_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('klaro_default_state', 'klaro_required', 'klaro_optout', 'klaro_onlyonce', 'klaro_purposes');
DELETE FROM wp_usermeta WHERE meta_key IN ('klaro_default_state', 'klaro_required', 'klaro_optout', 'klaro_onlyonce', 'klaro_purposes');
DELETE FROM wp_termmeta WHERE meta_key IN ('klaro_default_state', 'klaro_required', 'klaro_optout', 'klaro_onlyonce', 'klaro_purposes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('klaro_default_state', 'klaro_required', 'klaro_optout', 'klaro_onlyonce', 'klaro_purposes');

