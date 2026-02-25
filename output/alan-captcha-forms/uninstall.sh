#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alanforms_contact_form_7_integration'
wp option delete 'alanforms_elementor_pro_integration'
wp option delete 'alanforms_site_key_field'
wp option delete 'alanforms_api_key_field'
wp option delete 'alanforms_language'
wp option delete 'alanforms_language_attribute_unverified'
wp option delete 'alanforms_language_attribute_verified'
wp option delete 'alanforms_language_attribute_retry'
wp option delete 'alanforms_language_attribute_working'
wp option delete 'alanforms_language_attribute_start'

