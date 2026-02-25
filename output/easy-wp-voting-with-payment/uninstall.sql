-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewvwp_paystack_secret_key', 'ewvwp_display_vote', 'ewvwp_display_state', 'ewvwp_paystack_public_key', 'ewvwp_min_amount', 'ewvwp_template', 'ewvwp_no_of_candidate_per_page', 'ewvwp-admin-notice-example');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ewvwp_nickname_value_key', '_ewvwp_state_value_key', '_ewvwp_age_value_key', '_ewvwp_vote_value_key', '_ewvwp_occupation_value_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ewvwp_nickname_value_key', '_ewvwp_state_value_key', '_ewvwp_age_value_key', '_ewvwp_vote_value_key', '_ewvwp_occupation_value_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ewvwp_nickname_value_key', '_ewvwp_state_value_key', '_ewvwp_age_value_key', '_ewvwp_vote_value_key', '_ewvwp_occupation_value_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ewvwp_nickname_value_key', '_ewvwp_state_value_key', '_ewvwp_age_value_key', '_ewvwp_vote_value_key', '_ewvwp_occupation_value_key');

