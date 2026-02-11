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

## Preprints

<div style="margin-bottom: 1em; font-size: 0.9em; color: #666;">
<sup>†</sup> denotes equal contribution <br>
</div>



<div class="publication-container">
  <div class="publication-text">
    <h3>SCMBench: Benchmarking Domain-specific and Foundation Models for Single-cell Multi-omics Data Integration</h3>
    
    <p><strong>Authors:</strong> Yixuan Wang<sup>†</sup>, Yimin Fan<sup>†</sup>, Xuesong Wang<sup>†</sup>, Tingyang Yu<sup>†</sup>, Yongshuo Zong<sup>†</sup>, Xinyuan Liu, Meitong Liu, Qing Li, Kin hei Lee, <span style="color: #E6B800;">Khachatur Dallakyan</span>, Junjie Huang, Gengjie Jia, Jiao Yuan, Ting-Fung Chan, Xin Gao, Irwin King, Yu Li</p>
    
    <p><strong>Journal:</strong> Nature Communications</p>
  </div>
  
  <div class="publication-image">
    <img src="/images/2paper.png" alt="SCMBench - Single-cell Multi-omics Benchmark">
  </div>
</div>

## Current Major Projects

<div class="publication-container">
  <div class="publication-text">
    <h3>Systematic Benchmarking of Single-cell Transcriptomics Search Engines</h3>
    
    <p>The aim is to evaluate single-cell transcriptomics models across diverse, large-scale datasets to understand their capabilities and limitations for cell similarity search. Through this project, I gained experience comparing traditional approaches with foundation models across different platforms, species, and technologies, and learned how to design benchmarks for challenging scenarios where ground truth is ambiguous.</p>
  </div>
  
  <div class="publication-image">
    <img src="/images/3paper.png" alt="Single-cell Search Engine Benchmarks">
  </div>
</div>

<div class="publication-container">
  <div class="publication-text">
    <h3>Exploring the Developing Enteric Nervous System through Single-Cell Transcriptomics</h3>
    
    <p>The aim is to investigate spatio-temporal differences in Enteric Nervous System (ENS) cell populations, specifically focusing on progenitors, neuroblasts, and schwann cell precursors (SCPs) across different regions and developmental timepoints. Through this project, I gained experience working with conventional fate prediction tools and fine-tuning foundation models with custom learning objectives. I also learned to use attention-based architectures to analyze gene relationships within different cell clusters, aiming to reveal ENS development mechanisms.</p>
  </div>
  
  <div class="publication-image">
    <img src="/images/4paper.png" alt="ENS Development Analysis">
  </div>
</div>
