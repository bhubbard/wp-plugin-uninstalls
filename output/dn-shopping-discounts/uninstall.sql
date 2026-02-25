-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_expense_from', '_expense_to', '_discount', '_discount_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_expense_from', '_expense_to', '_discount', '_discount_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_expense_from', '_expense_to', '_discount', '_discount_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_expense_from', '_expense_to', '_discount', '_discount_type');

