#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'argonz_groq_api_key'
wp option delete 'argonz_aiml_api_key'
wp option delete 'argonz_api_service'
wp option delete 'argonz_api_models'

