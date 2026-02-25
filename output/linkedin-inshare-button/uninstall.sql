-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkedinshare_showonlyinsingle', 'linkedinshare_breakbefore', 'linkedinshare_breakafter', 'linkedinshare_displaystyle', 'linkedinshare_divstyling', 'linkedinshare_location');

