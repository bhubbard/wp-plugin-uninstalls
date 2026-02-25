-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('team_mxt_all_members', 'team_mxt_member_data', 'team_mxt_member_photo', 'team_mxt_cards_in_row_pc', 'team_mxt_cards_in_row_tablet', 'team_mxt_use_filtering', 'team_mxt_use_carousel', 'team_mxt_version', 'team_mxt_settings', 'team_mxt_add_member_success');

