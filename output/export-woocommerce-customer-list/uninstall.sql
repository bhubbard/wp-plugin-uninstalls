-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_guest_checkout', 'pi_ewcl_do_activation_redirect', 'pi_customer_row', 'pi_ewcl_enable_email', 'pi_ewcl_email', 'pi_ewcl_email_subject', 'pi_ewcl_email_message', 'pi_guest_row');

