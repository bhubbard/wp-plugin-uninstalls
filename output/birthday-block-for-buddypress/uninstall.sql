-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddy_birthday_field_id', 'buddy_birthday_default_range', 'buddy_birthday_default_limit');

