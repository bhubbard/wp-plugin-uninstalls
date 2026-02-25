-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_bsk_pdf_manager_open_target', '_bsk_pdf_manager_category_list_has_title', '_bsk_pdf_manager_pdf_order_by_', '_bsk_pdf_manager_pdf_order_', '_bsk_pdf_manager_db_ver_', '_bsk_pdf_manager_rels_done_', '_bsk_pdf_manager_free_to_pro_done_');
DELETE FROM wp_options WHERE option_name LIKE '%message_id_51';
DELETE FROM wp_options WHERE option_name LIKE '%message_id_15';
DELETE FROM wp_options WHERE option_name LIKE '%message_id_31';
DELETE FROM wp_options WHERE option_name LIKE '%message_id_32';
DELETE FROM wp_options WHERE option_name LIKE '%message_id_33';
DELETE FROM wp_options WHERE option_name LIKE '%message_id_34';
DELETE FROM wp_options WHERE option_name LIKE '%message_id_16';

