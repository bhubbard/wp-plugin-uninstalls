#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_based_on'
wp option delete '_moloni_documents_in_progress'

# Clear Cron Jobs
wp cron event delete 'moloniProductsSync'

