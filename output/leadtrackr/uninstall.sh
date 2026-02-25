#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leadtrackr_gf_forms'
wp option delete 'leadtrackr_cf7_forms'
wp option delete 'leadtrackr_elementor_forms'
wp option delete 'leadtrackr_wpforms_forms'
wp option delete 'leadtrackr_fluent_forms_forms'
wp option delete 'leadtrackr_divi_process_contact_form'
wp option delete 'leadtrackr_project_id'

