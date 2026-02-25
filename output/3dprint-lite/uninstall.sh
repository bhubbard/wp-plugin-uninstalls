#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'p3dlite_version'
wp option delete 'p3dlite_email_templates'
wp option delete 'p3dlite_settings'
wp option delete 'p3dlite_printers_description'
wp option delete 'p3dlite_materials_description'
wp option delete 'p3dlite_coatings_description'
wp option delete 'p3dlite_infills_description'
wp option delete 'p3dlite_do_activation_redirect'
wp option delete 'p3dlite_printers'
wp option delete 'p3dlite_materials'
wp option delete 'p3dlite_coatings'
wp option delete 'p3dlite_price_requests'

# Clear Cron Jobs
wp cron event delete 'p3dlite_housekeeping'

