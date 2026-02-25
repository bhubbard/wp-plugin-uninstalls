-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bupr_admin_general_options', 'bupr_admin_settings', 'bupr_admin_display_options', 'bupr_member_type_criteria', 'active_sitewide_plugins', 'bupr_plugin_version', 'bupr_current_batch', '_bupr_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('profile_star_rating', 'linked_bp_member', 'bupr_anonymous_review_post', 'bupr_aggregate_rating', 'bupr_review_count', 'bupr_last_calculated');
DELETE FROM wp_usermeta WHERE meta_key IN ('profile_star_rating', 'linked_bp_member', 'bupr_anonymous_review_post', 'bupr_aggregate_rating', 'bupr_review_count', 'bupr_last_calculated');
DELETE FROM wp_termmeta WHERE meta_key IN ('profile_star_rating', 'linked_bp_member', 'bupr_anonymous_review_post', 'bupr_aggregate_rating', 'bupr_review_count', 'bupr_last_calculated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('profile_star_rating', 'linked_bp_member', 'bupr_anonymous_review_post', 'bupr_aggregate_rating', 'bupr_review_count', 'bupr_last_calculated');

