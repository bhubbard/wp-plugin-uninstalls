#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'suscale_pages'
wp option delete 'suscale_results_page_id'
wp option delete 'suscale_questionnaire_page_id'
wp option delete 'suscale_page_created'
wp option delete 'suscale_page_id'

