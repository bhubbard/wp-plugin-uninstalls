#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'pi_ewcl_do_activation_redirect'
wp option delete 'pi_customer_row'
wp option delete 'pi_ewcl_enable_email'
wp option delete 'pi_ewcl_email'
wp option delete 'pi_ewcl_email_subject'
wp option delete 'pi_ewcl_email_message'
wp option delete 'pi_guest_row'

# Clear Cron Jobs
wp cron event delete 'pisol_ewcl_clear_old_files'

