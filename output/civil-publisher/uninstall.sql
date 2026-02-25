-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('civl_ci_learn_more_label', 'civl_ci_learn_more_link', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('civil_credibility_indicators', 'primary_category_id', 'credibility_indicators', 'secondary_bylines', 'cap-display_name', 'description', 'biography');
DELETE FROM wp_usermeta WHERE meta_key IN ('civil_credibility_indicators', 'primary_category_id', 'credibility_indicators', 'secondary_bylines', 'cap-display_name', 'description', 'biography');
DELETE FROM wp_termmeta WHERE meta_key IN ('civil_credibility_indicators', 'primary_category_id', 'credibility_indicators', 'secondary_bylines', 'cap-display_name', 'description', 'biography');
DELETE FROM wp_commentmeta WHERE meta_key IN ('civil_credibility_indicators', 'primary_category_id', 'credibility_indicators', 'secondary_bylines', 'cap-display_name', 'description', 'biography');

