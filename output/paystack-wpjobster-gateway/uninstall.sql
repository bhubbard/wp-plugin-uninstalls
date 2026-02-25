-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpjobster_paystack_enablesandbox', 'wpjobster_paystack_tsk', 'wpjobster_paystack_tpk', 'wpjobster_paystack_lsk', 'wpjobster_paystack_lpk', 'wpjobster_paystack_success_page', 'wpjobster_paystack_failure_page', 'wpjobster_paystack_id');
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_button_caption';

