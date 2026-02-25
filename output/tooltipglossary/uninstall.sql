-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('red_glossaryOnlySingle', 'red_glossaryOnPages', 'red_glossaryID', 'red_glossaryTooltip', 'red_glossaryDiffLinkClass', 'red_glossaryPermalink', 'red_glossaryFirstOnly');

