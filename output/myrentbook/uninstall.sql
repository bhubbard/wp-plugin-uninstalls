-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myrentbook_options');
DELETE FROM wp_options WHERE option_name LIKE 'myrentbook_flash_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lease_id', '_type', '_utility_kind', '_amount_cents', '_amount', '_due', '_status', '_paid_total_cents', '_paid_total', '_applied_credit_cents', '_note', '_address', '_landlord_user_id', '_property_id', '_tenant_user_id', '_rent_amount', '_currency', '_due_day', '_start_date', '_end_date', '_active', '_paid_date', '_rent_amount_cents', '_credit_cents');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lease_id', '_type', '_utility_kind', '_amount_cents', '_amount', '_due', '_status', '_paid_total_cents', '_paid_total', '_applied_credit_cents', '_note', '_address', '_landlord_user_id', '_property_id', '_tenant_user_id', '_rent_amount', '_currency', '_due_day', '_start_date', '_end_date', '_active', '_paid_date', '_rent_amount_cents', '_credit_cents');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lease_id', '_type', '_utility_kind', '_amount_cents', '_amount', '_due', '_status', '_paid_total_cents', '_paid_total', '_applied_credit_cents', '_note', '_address', '_landlord_user_id', '_property_id', '_tenant_user_id', '_rent_amount', '_currency', '_due_day', '_start_date', '_end_date', '_active', '_paid_date', '_rent_amount_cents', '_credit_cents');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lease_id', '_type', '_utility_kind', '_amount_cents', '_amount', '_due', '_status', '_paid_total_cents', '_paid_total', '_applied_credit_cents', '_note', '_address', '_landlord_user_id', '_property_id', '_tenant_user_id', '_rent_amount', '_currency', '_due_day', '_start_date', '_end_date', '_active', '_paid_date', '_rent_amount_cents', '_credit_cents');

