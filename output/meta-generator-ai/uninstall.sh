#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mga_meta_gen_api_key'
wp option delete 'mga_meta_gen_api_link'
wp option delete 'mga_meta_gen_full_description'
wp option delete 'mga_meta_gen_short_description'
wp option delete 'mga_meta_gen_gpt_model_name'
wp option delete 'mga_meta_gen_temperature'

