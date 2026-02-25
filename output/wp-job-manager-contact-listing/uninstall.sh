#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'job_manager_form_contact'
wp option delete 'resume_manager_form_contact'
wp option delete 'resume_manager_force_application'
wp option delete 'ninja_forms_version'
wp option delete 'ninja_forms_load_deprecated'

