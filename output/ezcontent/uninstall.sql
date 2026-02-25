-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ez_content101', 'ez_content102', 'ez_content201', 'ez_content202', 'ez_content301', 'ez_content302', 'ez_content401', 'ez_content402', 'ez_content501', 'ez_content502', 'ez_content601', 'ez_content602', 'ez_content701', 'ez_content702', 'ez_content801', 'ez_content802', 'ez_content901', 'ez_content902', 'ez_content1001', 'ez_content1002');

