-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CF7_page', 'Forminator_page', 'WPForms_page', 'Breakdance_page', 'Elementor_page', 'Formidable_page', 'NinjaForms_page', 'DuplicateKillerSettings', 'duplicateKiller_duplicates_blocked_count', 'duplicateKiller_review_milestones_dismissed', 'forminator_page', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_breakdance_data', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_breakdance_data', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_breakdance_data', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_breakdance_data', '_elementor_data');

