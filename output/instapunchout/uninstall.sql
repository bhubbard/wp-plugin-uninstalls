-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('punchout_id', 'b2bwhs_customergroup', 'b2bwhs_b2buser', 'b2bking_customergroup', 'b2bking_b2buser', 'po_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('punchout_id', 'b2bwhs_customergroup', 'b2bwhs_b2buser', 'b2bking_customergroup', 'b2bking_b2buser', 'po_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('punchout_id', 'b2bwhs_customergroup', 'b2bwhs_b2buser', 'b2bking_customergroup', 'b2bking_b2buser', 'po_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('punchout_id', 'b2bwhs_customergroup', 'b2bwhs_b2buser', 'b2bking_customergroup', 'b2bking_b2buser', 'po_number');

