package com.frostsmp.util;

import org.bukkit.Particle;
import org.bukkit.World;

public enum ParticleEffect {
    EXPLOSION_LARGE(Particle.EXPLOSION_LARGE),
    FIREWORKS_SPARK(Particle.FIREWORKS_SPARK),
    VILLAGER_HAPPY(Particle.VILLAGER_HAPPY),
    HEART(Particle.HEART),
    NOTE(Particle.NOTE),
    FLAME(Particle.FLAME),
    CRIT(Particle.CRIT),
    END_ROD(Particle.END_ROD);

    private final Particle particle;

    ParticleEffect(Particle particle) {
        this.particle = particle;
    }

    public Particle getParticle() {
        return particle;
    }

    public void spawn(World world, double x, double y, double z, int count, double offsetX, double offsetY, double offsetZ, double speed) {
        world.spawnParticle(particle, x, y, z, count, offsetX, offsetY, offsetZ, speed);
    }
}
