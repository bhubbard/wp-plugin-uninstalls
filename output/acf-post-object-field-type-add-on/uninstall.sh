#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'de_acfpoftao_version'
wp option delete 'de_acfpoftao_enable'
wp option delete 'de_acfpoftao_append_field'
wp option delete 'de_acfpoftao_append_field_format'
wp option delete 'acf_version'

