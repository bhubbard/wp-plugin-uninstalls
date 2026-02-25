-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('abtesting_block_a', 'abtesting_block_b', 'abtesting_block_a_count', 'abtesting_block_b_count', 'reblexab_block_conversion_a', 'reblexab_block_conversion_b', 'abtesting_distribution_a', 'abtesting_distribution_b', 'reblexab_block_a_target_selector', 'reblexab_block_b_target_selector', '_edit_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('abtesting_block_a', 'abtesting_block_b', 'abtesting_block_a_count', 'abtesting_block_b_count', 'reblexab_block_conversion_a', 'reblexab_block_conversion_b', 'abtesting_distribution_a', 'abtesting_distribution_b', 'reblexab_block_a_target_selector', 'reblexab_block_b_target_selector', '_edit_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('abtesting_block_a', 'abtesting_block_b', 'abtesting_block_a_count', 'abtesting_block_b_count', 'reblexab_block_conversion_a', 'reblexab_block_conversion_b', 'abtesting_distribution_a', 'abtesting_distribution_b', 'reblexab_block_a_target_selector', 'reblexab_block_b_target_selector', '_edit_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('abtesting_block_a', 'abtesting_block_b', 'abtesting_block_a_count', 'abtesting_block_b_count', 'reblexab_block_conversion_a', 'reblexab_block_conversion_b', 'abtesting_distribution_a', 'abtesting_distribution_b', 'reblexab_block_a_target_selector', 'reblexab_block_b_target_selector', '_edit_last');

