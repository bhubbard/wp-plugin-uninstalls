#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clinicsoftwarecom_form_fields'
wp option delete 'clinicsoftwarecom_mapping_fields'
wp option delete 'clinicsoftwarecom_client_key'
wp option delete 'clinicsoftwarecom_client_secret'
wp option delete 'clinicsoftwarecom_client_alias'
wp option delete 'clinicsoftwarecom_client_server'

