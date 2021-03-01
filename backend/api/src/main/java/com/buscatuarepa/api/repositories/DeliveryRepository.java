package com.buscatuarepa.api.repositories;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.buscatuarepa.api.dtos.DeliveryDTO;

import org.springframework.stereotype.Repository;

@Repository
public class DeliveryRepository {

  @PersistenceContext
  private EntityManager em;

  public List<DeliveryDTO> getBuenosAiresDelivery() {
    Query q = em.createNativeQuery("select * from arg_buenosaires_del");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<DeliveryDTO> deliveryDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      deliveryDTO.add(new DeliveryDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3],
          (String) tuple[4], (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8],
          (String) tuple[9], (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13],
          (String) tuple[14], (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18]));
    }
    return deliveryDTO;
  }

  public List<DeliveryDTO> getNeuquenDelivery() {
    Query q = em.createNativeQuery("select * from arg_neuquen_del");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<DeliveryDTO> deliveryDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      deliveryDTO.add(new DeliveryDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3],
          (String) tuple[4], (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8],
          (String) tuple[9], (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13],
          (String) tuple[14], (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18]));
    }
    return deliveryDTO;
  }

  public List<DeliveryDTO> getLlanquihueDelivery() {
    Query q = em.createNativeQuery("select * from chl_llanquihue_del");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<DeliveryDTO> deliveryDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      deliveryDTO.add(new DeliveryDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3],
          (String) tuple[4], (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8],
          (String) tuple[9], (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13],
          (String) tuple[14], (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18]));
    }
    return deliveryDTO;
  }

  public List<DeliveryDTO> getSantiagoDelivery() {
    Query q = em.createNativeQuery("select * from chl_santiago_del");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<DeliveryDTO> deliveryDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      deliveryDTO.add(new DeliveryDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3],
          (String) tuple[4], (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8],
          (String) tuple[9], (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13],
          (String) tuple[14], (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18]));
    }
    return deliveryDTO;
  }

  public List<DeliveryDTO> getMexCiudadDelivery() {
    Query q = em.createNativeQuery("select * from mex_ciudad_del");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<DeliveryDTO> deliveryDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      deliveryDTO.add(new DeliveryDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3],
          (String) tuple[4], (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8],
          (String) tuple[9], (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13],
          (String) tuple[14], (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18]));
    }
    return deliveryDTO;
  }

  public List<DeliveryDTO> getMontevideoDelivery() {
    Query q = em.createNativeQuery("select * from ury_montevideo_del");
    List<Object[]> tuples = (List<Object[]>) q.getResultList();
    List<DeliveryDTO> deliveryDTO = new ArrayList<>();
    Iterator<Object[]> it = tuples.iterator();
    Object[] tuple;

    while (it.hasNext()) {
      tuple = it.next();
      deliveryDTO.add(new DeliveryDTO((String) tuple[0], (String) tuple[1], (String) tuple[2], (String) tuple[3],
          (String) tuple[4], (String) tuple[5], (String) tuple[6], (String) tuple[7], (String) tuple[8],
          (String) tuple[9], (String) tuple[10], (String) tuple[11], (String) tuple[12], (String) tuple[13],
          (String) tuple[14], (String) tuple[15], (String) tuple[16], (String) tuple[17], (String) tuple[18]));
    }
    return deliveryDTO;
  }

}
