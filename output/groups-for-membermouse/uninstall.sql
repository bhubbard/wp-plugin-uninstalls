-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mm-option-use-legacy-db', 'gfmm_checkoutpage_notice', 'gfmm_confirmationpage_notice', 'mm_custom_field_group_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mmgroups-ignore', 'mmgroups-sc-ignore');
DELETE FROM wp_usermeta WHERE meta_key IN ('mmgroups-ignore', 'mmgroups-sc-ignore');
DELETE FROM wp_termmeta WHERE meta_key IN ('mmgroups-ignore', 'mmgroups-sc-ignore');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mmgroups-ignore', 'mmgroups-sc-ignore');

