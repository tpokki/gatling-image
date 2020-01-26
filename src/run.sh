#!/bin/sh

# Copy all non-hidden files to SIMULATIONS_FOLDER
ls ${SIMULATIONS_INPUT}|while read f; do
  cp "${SIMULATIONS_INPUT}/$f" "${SIMULATIONS_FOLDER}"/
done

${GATLING_HOME}/bin/gatling.sh -sf ${SIMULATIONS_FOLDER} $*
