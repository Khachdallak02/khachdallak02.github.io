---
permalink: /research/
title: "Research"
author_profile: true
---

<style>
.publication-container {
  display: flex;
  align-items: flex-start;
  gap: 20px;
  margin-bottom: 30px;
}

.publication-text {
  flex: 1;
}

.publication-text h3 {
  margin-top: 0;
}

.publication-image {
  flex: 0 0 380px;
}

.publication-image img {
  width: 100%;
  height: auto;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}

.project-container h3 {
  margin-top: 0;
}

.project-figure {
  margin: 1.25em 0 0;
}

.project-figure img {
  display: block;
  width: 100%;
  height: auto;
  border-radius: 14px;
}

@media (max-width: 768px) {
  .publication-container {
    flex-direction: column;
    gap: 15px;
  }
  
  .publication-image {
    flex: none;
    order: 2;
  }
  
  .publication-text {
    order: 1;
  }
}
</style>

## Journal Publications

<div style="margin-bottom: 1em; font-size: 0.9em; color: #666;">
<sup>†</sup> denotes equal contribution <br>
</div>

<div class="publication-container">
  <div class="publication-text">
    <h3><a href="https://www.nature.com/articles/s41467-025-63478-z" target="_blank">Prediction of Cellular Morphology Change Under Perturbations with Transcriptome-Guided Diffusion Model</a></h3>
    
    <p><strong>Authors:</strong> Xuesong Wang<sup>†</sup>, Yimin Fan<sup>†</sup>, Yucheng Guo, Chenghao Fu, Kinhei Lee, <span style="color: #E6B800;">Khachatur Dallakyan</span>, Yaxuan Li, Qijin Yin, Yu Li, and Le Song</p>
    
    <p><strong>Journal:</strong> Nature Communications</p>
  </div>
  
  <div class="publication-image">
    <img src="/images/1paper.png" alt="Inference Modes - Cellular Morphology Prediction Model">
  </div>
</div>

<div class="publication-container">
  <div class="publication-text">
    <h3><a href="https://www.nature.com/articles/s41467-026-72570-x" target="_blank">SCMBench: Benchmarking Domain-specific and Foundation Models for Single-cell Multi-omics Data Integration</a></h3>
    
    <p><strong>Authors:</strong> Yixuan Wang<sup>†</sup>, Yimin Fan<sup>†</sup>, Xuesong Wang<sup>†</sup>, Tingyang Yu<sup>†</sup>, Yongshuo Zong<sup>†</sup>, Xinyuan Liu, Gaoyang Zhong, Meitong Liu, Qing Li, Kin Hei Lee, <span style="color: #E6B800;">Khachatur Dallakyan</span>, Zhichao Hu, Yaqian Qi, Junjie Huang, Gengjie Jia, Jiao Yuan, Ting-Fung Chan, Xin Gao, Irwin King, Yu Li</p>
    
    <p><strong>Journal:</strong> Nature Communications</p>
  </div>
  
  <div class="publication-image">
    <img src="/images/2paper.png" alt="SCMBench - Single-cell Multi-omics Benchmark">
  </div>
</div>

<div class="publication-container">
  <div class="publication-text">
    <h3><a href="https://www.pnas.org/doi/10.1073/pnas.2614077123" target="_blank">Resolving cell lineages and gene functions in the developing mouse gastrointestinal tract using in utero transduction</a></h3>
    
    <p><strong>Authors:</strong> Ziwei Liu<sup>†</sup>, Krishnanand Padmanabhan<sup>†</sup>, Jingyan He, Katrin Hector, Bettina Semsch, Jia Sun, Viktoria Knoflach, Sarantis Giatrellis, Johan Lorentz, <span style="color: #E6B800;">Khachatur Dallakyan</span>, Christian Göritz, Emma Rachel Andersson, Ulrika Marklund</p>
    
    <p><strong>Journal:</strong> Proceedings of the National Academy of Sciences (PNAS)</p>
  </div>
  
  <div class="publication-image">
    <img src="/images/5paper.png" alt="In utero transduction in the developing enteric nervous system">
  </div>
</div>

## Preprints

<div style="margin-bottom: 1em; font-size: 0.9em; color: #666;">
<sup>†</sup> denotes equal contribution <br>
</div>

<div class="publication-container">
  <div class="publication-text">
    <h3>Systematic Benchmarking of Single-cell Transcriptomics Search Engines</h3>
    
    <p><strong>Authors:</strong> Yimin Fan<sup>†</sup>, Kin Hei Lee<sup>†</sup>, Xinyuan Liu<sup>†</sup>, <span style="color: #E6B800;">Khachatur Dallakyan</span><sup>†</sup>, Seyoung Jin<sup>†</sup>, Baekgyu Choi, Xuesong Wang, Yixuan Wang, Licheng Zong, Yue Li, Inkyung Jung, Yu Li</p>
    
    <p><strong>Journal:</strong> Nature Methods</p>
  </div>
  
  <div class="publication-image">
    <img src="/images/3paper.png" alt="Single-cell Search Engine Benchmarks">
  </div>
</div>

## Current Major Projects

<div class="project-container">
  <h3>Bringing New Modalities into Single-Cell Foundation Models</h3>

  <p>My main project is bringing new modalities into single-cell foundation models. Today's models learn from the gene expression of dissociated cells, so they know what a cell expresses but not where it sits in the tissue or which parts of its genome are open. I am extending them, starting from the lab's scPRINT models, to read spatial transcriptomics and then chromatin accessibility, so that one model gives one embedding that keeps cell identity and adds tissue context: a step towards a multimodal virtual cell.</p>

  <figure class="project-figure">
    <img src="/images/multimodal-scfm.svg" alt="Gene expression, position in the tissue and chromatin accessibility are each turned into tokens, pass through one transformer, and come out as a single cell embedding in which cells group by type and by tissue region.">
  </figure>
</div>
