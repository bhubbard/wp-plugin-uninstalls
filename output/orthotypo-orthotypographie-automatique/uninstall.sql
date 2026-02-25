-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rules-punctuation', 'rules-quotation_marks', 'rules-percentage', 'rules-pleasantries_m', 'rules-pleasantries_mme', 'rules-pleasantries_mlle', 'rules-pleasantries_dr', 'rules-pleasantries_pr', 'rules-number_er', 'rules-number_nd', 'rules-number_e', 'global-filters', 'debug_options-replace_space_by_underscore', 'debug_options-use_red_color');

