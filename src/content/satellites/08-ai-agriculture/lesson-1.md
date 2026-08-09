---
title: "What is AI?"
chapter: 8
lesson: 1
---
<div class="lesson-intro">
  <p>Artificial intelligence, or AI, is like giving computers and machines a kind of smart brain so they can do tasks that usually need human thinking. It helps them to:</p>
  <ul>
    <li>Recognize patterns</li>
    <li>Learn from examples</li>
    <li>Provide suggestions</li>
    <li>Make decisions</li>
  </ul>
</div>

![The world of AI](/WIAA/images/world_of_AI.jpg)
<p class="image-caption">The AI Universe.</p>

<div class="definitions-grid">
  <div class="definition-card">
    <h3>Artificial Intelligence</h3>
    <p><strong>Smart computers that think like humans.</strong></p>
    <p>For example, we want a smart computer system that can use a human supplied image, which it uses to identify pests on maize and decide what to do (e.g., pest mitigation techniques, pest severity), helping farmers with decision making.</p>
  </div>
  <div class="definition-card">
    <h3>Machine Learning</h3>
    <p><strong>AI that learns from many examples (data) with human supervision instead of being told every rule.</strong></p>
    <p>For example, we show the computer lots of pictures of insects and provide labels for "pest" or "beneficial," so the computer can learn patterns and identify pests on maize leaf.</p>
  </div>
  <div class="definition-card">
    <h3>Deep Learning</h3>
    <p><strong>A type of machine learning that uses layers that can process and recognize patterns from unstructured data without human supervision</strong> (labels are provided in both deep learning and machine learning, but in deep learning features are not provided to computers).</p>
    <p>For example, we use deep learning to enable the computer to detect fine details in insect pictures and recognize them accurately through pattern recognition without human supervision.</p>
  </div>
  <div class="definition-card">
    <h3>Generative AI</h3>
    <p><strong>Deep learning models that can create multimedia content, including text, images, sounds, and videos.</strong> A generative AI model is based on foundation models that are trained on expansive data and is treated as a "base brain" for many different tasks.</p>
    <p>For example, we use a generative AI model that can look at a picture and generate a clear explanation, such as "This is fall armyworm, a maize pest that eats leaves."</p>
  </div>
  <div class="definition-card">
    <h3>Foundation Models</h3>
    <p><strong>Very large generative AI models trained on vast amounts of data.</strong> Foundation models can perform a variety of tasks such as writing, answering questions, and understanding pictures. ChatGPT, Gemini, or Claude are examples of foundation models. They are like one big "starter brain" that can perform different tasks from the same model, such as writing a story about a farmer or explaining corn growth and different types of corn. Foundation models can use text or images or both.</p>
    <p>For example, instead of training from scratch, we start with a large foundation model that already understands language and images and fine-tune it on crop and insect data. For example, ChatGPT is a generative foundation model that is already trained on Image (insect) and text data (relevant details about insects). We can also connect the foundation model to Iowa-specific pest guides using a retrieval augmented generation pipeline, so when it answers about "a pest on a maize leaf," it gives advice that fits Iowa, not just anywhere in the world.</p>
  </div>
  <div class="definition-card">
    <h3>Agentic AI</h3>
    <p><strong>AI systems that use foundation models to target a specific area as helpers.</strong> Agentic AI can help individuals learn new information, create plans and procedures, learn to use new tools, and even assist with performing tasks.</p>
    <p>For example, imagine an Agentic AI system for a farm. It watches for new images from the field, asks the foundation model what insect it sees, and then decides, based on whether it is a serious pest, whether to send an alert to the farmer's phone or update a spray schedule. This whole pipeline that acts on its own is agentic AI.</p>
  </div>
</div>