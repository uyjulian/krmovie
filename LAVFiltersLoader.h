
#pragma once

void* tTVPCreateLAVSplitterFilter(void* formatdata);
void* tTVPCreateLAVVideoFilter(void* formatdata);
void* tTVPCreateLAVAudioFilter(void* formatdata);

bool CanLAVFiltersBeUsed(void);
void EnsureLAVFilters(void);
