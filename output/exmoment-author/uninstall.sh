#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exmoau_library_seed_scheduled'
wp option delete 'exmoau_library_seed_processed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exmoau_job_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exmoau_job_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exmoau_job_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exmoau_job_type'"
