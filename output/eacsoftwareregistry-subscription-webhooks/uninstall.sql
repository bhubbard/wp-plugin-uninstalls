-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sumo_previous_parent_order', 'sumo_get_parent_order_id', 'sumo_get_renewal_id', 'sumo_get_next_payment_date', 'sumo_get_sub_end_date', 'sumo_get_sub_start_date', 'sumo_get_status', 'sumo_get_last_payment_date', 'sumo_get_trial_end_date', 'sumo_get_every_renewal_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('sumo_previous_parent_order', 'sumo_get_parent_order_id', 'sumo_get_renewal_id', 'sumo_get_next_payment_date', 'sumo_get_sub_end_date', 'sumo_get_sub_start_date', 'sumo_get_status', 'sumo_get_last_payment_date', 'sumo_get_trial_end_date', 'sumo_get_every_renewal_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('sumo_previous_parent_order', 'sumo_get_parent_order_id', 'sumo_get_renewal_id', 'sumo_get_next_payment_date', 'sumo_get_sub_end_date', 'sumo_get_sub_start_date', 'sumo_get_status', 'sumo_get_last_payment_date', 'sumo_get_trial_end_date', 'sumo_get_every_renewal_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sumo_previous_parent_order', 'sumo_get_parent_order_id', 'sumo_get_renewal_id', 'sumo_get_next_payment_date', 'sumo_get_sub_end_date', 'sumo_get_sub_start_date', 'sumo_get_status', 'sumo_get_last_payment_date', 'sumo_get_trial_end_date', 'sumo_get_every_renewal_ids');

