import { defineCollection, z } from 'astro:content';

const dronesCollection = defineCollection({
  type: 'content',
  schema: z.object({
    title: z.string(),
    chapter: z.number(),
    lesson: z.number(),
    image: z.string().optional(),
  }),
});

export const collections = {
  'drones': dronesCollection,
};